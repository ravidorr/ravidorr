
# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

if [ -f ${HOME}/.zshrc ]; then
  source ${HOME}/.zshrc
fi
