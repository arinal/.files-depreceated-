from __future__ import absolute_import, division, print_function

import os
from ranger.api.commands import Command

# fzf_fasd - Fasd + Fzf + Ranger (Interactive Style)
class fzf_fasd(Command):
    """
    :fzf_fasd

    Jump to a file or folder using Fasd and fzf

    URL: https://github.com/clvv/fasd
    URL: https://github.com/junegunn/fzf
    """

    def execute(self):
        import subprocess

        if self.quantifier:
            command = "fasd | fzf -e -i --tac --no-sort | awk '{ print substr($0, index($0,$2)) }'"
        else:
            command = "fasd | fzf -e -i --tac --no-sort | awk '{ print substr($0, index($0,$2)) }'"
        fzf = self.fm.execute_command(command, stdout=subprocess.PIPE)
        stdout, _ = fzf.communicate()
        if fzf.returncode == 0:
            fzf_file = os.path.abspath(stdout.decode("utf-8").rstrip("\n"))
            if os.path.isdir(fzf_file):
                self.fm.cd(fzf_file)
            else:
                self.fm.select_file(fzf_file)


# Fasd with ranger (Command Line Style)
# https://github.com/ranger/ranger/wiki/Commands
class fasd(Command):
    """
    :fasd

    Jump to directory using fasd
    URL: https://github.com/clvv/fasd
    """

    def execute(self):
        import subprocess

        arg = self.rest(1)
        if arg:
            directory = subprocess.check_output(
                ["fasd", "-d"] + arg.split(), universal_newlines=True
            ).strip()
            self.fm.cd(directory)


# Simply bind this function to a key, by adding this to your ~/.config/ranger/rc.conf: map <C-f> fzf_select
class fzf_select(Command):
    """
    :fzf_select

    Find a file using fzf.

    With a prefix argument select only directories.

    See: https://github.com/junegunn/fzf
    """

    def execute(self):
        import subprocess
        import os.path

        fzf = self.fm.execute_command(
            "fzf +m", universal_newlines=True, stdout=subprocess.PIPE
        )
        stdout, _ = fzf.communicate()
        if fzf.returncode == 0:
            fzf_file = os.path.abspath(stdout.rstrip("\n"))
            if os.path.isdir(fzf_file):
                self.fm.cd(fzf_file)
            else:
                self.fm.select_file(fzf_file)


# # fzf_locate
# class fzf_locate(Command):
#     """
#     :fzf_locate

#     Find a file using fzf.

#     With a prefix argument select only directories.

#     See: https://github.com/junegunn/fzf
#     """

#     def execute(self):
#         import subprocess

#         if self.quantifier:
#             command = "locate home media | fzf -e -i"
#         else:
#             command = "locate home media | fzf -e -i"
#         fzf = self.fm.execute_command(command, stdout=subprocess.PIPE)
#         stdout, _ = fzf.communicate()
#         if fzf.returncode == 0:
#             fzf_file = os.path.abspath(stdout.decode("utf-8").rstrip("\n"))
#             if os.path.isdir(fzf_file):
#                 self.fm.cd(fzf_file)
#             else:
#                 self.fm.select_file(fzf_file)
