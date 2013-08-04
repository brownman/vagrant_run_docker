# ======================
# NodeJS on Ubuntu image
# ======================

# =============================================================
# 1.) Run --> docker run -d -p :8001 xxdesmus/ubuntu-node-hello
# 2.) Go to YOURIP:8001
# 3.) Profit.
# =============================================================

from base

maintainer Nick Stinemates

# ====================================
# Install NodeJS from Chris Lea's repo
# ====================================
run apt-get install -y software-properties-common
run apt-get update
run add-apt-repository ppa:chris-lea/node.js
run apt-get update
run apt-get install -y nodejs

# =================
# Bundle app source
# =================
ADD . /src

# ========================
# Install app dependencies
# ========================
RUN cd /src; npm install

# =======================================
# Make port 8001 available for the image
# =======================================
EXPOSE  8001

# =============================
# Start Node for the site index
# =============================

CMD ["node", "/src/index.js"]
