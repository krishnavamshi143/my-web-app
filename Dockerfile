# Step 1: Start with a small, ready-made kitchen that already has Node.js installed
FROM node:18-alpine

# Step 2: Set the working folder inside the lunchbox
WORKDIR /app

# Step 3: Copy ONLY the package files first (smart trick, explained below)
COPY package*.json ./

# Step 4: Install the tools/ingredients (like Express)
RUN npm install

# Step 5: Now copy the REST of your app's code
COPY . .

# Step 6: Tell Docker which "door" the app uses
EXPOSE 3000

# Step 7: The command that runs when the lunchbox is opened
CMD ["node", "server.js"]