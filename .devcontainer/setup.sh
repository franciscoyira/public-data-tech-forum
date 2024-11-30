#!/bin/bash
pip install -r requirements.txt

# Add a function-based alias that takes a commit message
echo '
gg() {
    if [ $# -eq 0 ]; then
        echo "Please provide a commit message"
        return 1
    fi
    git add .
    git commit -m "$*"
    git push
}
' >> ~/.bashrc

source ~/.bashrc
