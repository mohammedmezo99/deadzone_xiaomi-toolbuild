#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Copyright by affggh
# This program based on Apache 2.0 LICENES
import os

AUTHOR = "affggh"
LICENES = "Apache 2.0"
VERSION = "1.0"


def scanfs(file) -> dict:
    filesystem_config = {}
    with open(file, "r") as file_:
        for i in file_.readlines():
            filepath, *other = i.strip().split()
            filesystem_config[filepath] = other
            if long := len(other) > 4:
                print(f"[Warn] Filesystem entry has unexpected extra fields: {i.strip()} ({long})")
    return filesystem_config


def scan_dir(folder) -> list:
    allfiles = ['/']
    if os.name == 'nt':
        yield os.path.basename(folder).replace('\\', '')
    elif os.name == 'posix':
        yield os.path.basename(folder).replace('/', '')
    else:
        return ''
    for root, dirs, files in os.walk(folder, topdown=True):
        for dir_ in dirs:
            yield os.path.join(root, dir_).replace(folder, os.path.basename(folder)).replace('\\', '/')
        for file in files:
            yield os.path.join(root, file).replace(folder, os.path.basename(folder)).replace('\\', '/')
        for rv in allfiles:
            yield rv


def islink(file) -> str and None:
    if os.name == 'nt':
        if not os.path.isdir(file):
            with open(file, 'rb') as f:
                if f.read(12) == b'!<symlink>\xff\xfe':
                    return f.read().decode("utf-8").replace('\x00', '')
                else:
                    return
    elif os.name == 'posix':
        if os.path.islink(file):
            return os.readlink(file)
        else:
            return


def fs_patch(fs_file, dir_path) -> tuple:  # Compare two dictionaries.
    new_fs = {}
    new_add = 0
    r_fs = {}
    print("FsPatcher: Loaded %d original entries" % (len(fs_file.keys())))
    for i in scan_dir(os.path.abspath(dir_path)):
        if fs_file.get(i):
            new_fs[i] = fs_file[i]
        else:
            if r_fs.get(i):
                continue
            if os.name == 'nt':
                filepath = os.path.abspath(dir_path + os.sep + ".." + os.sep + i.replace('/', '\\'))
            elif os.name == 'posix':
                filepath = os.path.abspath(dir_path + os.sep + ".." + os.sep + i)
            else:
                filepath = os.path.abspath(dir_path + os.sep + ".." + os.sep + i)
            if os.path.isdir(filepath):
                uid = '0'
                if "system/bin" in i or "system/xbin" in i or "vendor/bin" in i:
                    gid = '2000'
                else:
                    gid = '0'
                mode = '0755'  # dir path always 755
                config = [uid, gid, mode]
            elif islink(filepath):
                uid = '0'
                if ("system/bin" in i) or ("system/xbin" in i) or ("vendor/bin" in i):
                    gid = '2000'
                else:
                    gid = '0'
                if ("/bin" in i) or ("/xbin" in i):
                    mode = '0755'
                elif ".sh" in i:
                    mode = "0750"
                else:
                    mode = "0644"
                link = islink(filepath)
                config = [uid, gid, mode, link]
            elif ("/bin" in i) or ("/xbin" in i):
                uid = '0'
                mode = '0755'
                if ("system/bin" in i) or ("system/xbin" in i) or ("vendor/bin" in i):
                    gid = '2000'
                else:
                    gid = '0'
                    mode = '0755'
                if ".sh" in i:
                    mode = "0750"
                else:
                    for s in ["/bin/su", "/xbin/su", "disable_selinux.sh", "daemon", "ext/.su", "install-recovery",
                              'installed_su', 'bin/rw-system.sh', 'bin/getSPL']:
                        if s in i:
                            mode = "0755"
                config = [uid, gid, mode]
            else:
                uid = '0'
                gid = '0'
                mode = '0644'
                config = [uid, gid, mode]
            print(f"ADD [{i}{config}]")
            r_fs[i] = 1
            new_add += 1
            new_fs[i] = config
    return new_fs, new_add


def main(dir_path, fs_config) -> None:
    new_fs, new_add = fs_patch(scanfs(os.path.abspath(fs_config)), dir_path)
    with open(fs_config, "w", encoding='utf-8', newline='\n') as f:
        f.writelines([i + " " + " ".join(new_fs[i]) + "\n" for i in sorted(new_fs.keys())])
    print("FsPatcher: Added %d new entries" % new_add)
def Usage():
    print("Usage:")
    print("%s <folder> <fs_config>" %(sys.argv[0]))
    print("    Auto-patch an fs_config file from an extracted partition tree.")

if __name__ == '__main__':
    import sys
    global VERBOSE
    VERBOSE = False
    if len(sys.argv) < 3:
        Usage()
        sys.exit()
    if len(sys.argv) > 3:
        if sys.argv[3] == '-i':
            VERBOSE = True
    if (os.path.isdir(sys.argv[1]) or os.path.isfile(sys.argv[2])):
        print("FsPatcher by [%s]\nLICENSE [%s]\nVERSION [%s]" %(AUTHOR, LICENES, VERSION))
        main(sys.argv[1], sys.argv[2])
        print("Filesystem patch completed.")
    else:
        print("The provided path or file type is invalid. Please verify the arguments.")
        Usage()
