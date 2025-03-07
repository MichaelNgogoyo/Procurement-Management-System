# ModernProcure Frontend

## Setup Instructions

### Prerequisites
- Node.js 16+
- Yarn package manager
- Docker (for containerization)

### Local Development
1. Install dependencies:
```bash
yarn install
```

2. Start development server:
```bash
yarn serve
```

3. Build for production:
```bash
yarn build
```

### Docker Setup
1. Build the image:
```bash
docker build -t modernprocure-frontend .
```

2. Run the container:
```bash
docker run -p 8080:80 modernprocure-frontend
```

### Environment Variables
Required environment variables:
```
NODE_ENV=production
VUE_APP_API_ENDPOINT=${API_URL}
VUE_APP_CLIENT_ID=${CLIENT_ID}
VUE_APP_CLIENT_SECRET=${CLIENT_SECRET}
```

### Project Structure
```
Modernprocore-UI/
├── src/                # Source code
├── public/            # Static files
├── nginx.conf         # Nginx configuration
├── Dockerfile         # Docker configuration
└── package.json       # Dependencies and scripts
```

### Deployment
1. Push to GitHub:
```bash
git add .
git commit -m "Update frontend"
git push origin main
```

2. Railway will automatically deploy from the main branch

### Health Checks
- Endpoint: `/`
- Interval: 30s
- Timeout: 10s
- Retries: 3

### Troubleshooting
1. Build Issues
   - Clear node_modules and yarn cache
   - Verify Node.js version
   - Check for dependency conflicts

2. Runtime Issues
   - Check environment variables
   - Verify API endpoint configuration
   - Check browser console for errors

3. Docker Issues
   - Verify Docker installation
   - Check port conflicts
   - Review container logs

# login-app

## Project setup

```
yarn install
```

### Compiles and hot-reloads for development

```
yarn serve
```

### Compiles and minifies for production

```
yarn build
```

### Run your unit tests

```
yarn test:unit
```

### Lints and fixes files

```
yarn lint
```

### Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).
Project Author
Samiuel Negash

Project Title
Modern Procurev : Project and human resources management website for modern construction plc


Essential features
•	User login
•	Employee Details Management (including assigning different roles)
•	Employee Tracking System (Assign Project, giving feedback)
•	Project management
•	Employee payroll

Nonessential Features
•	Links with the calendar
•	Links with ADP
•	Add address



Dependencies

*  I use Visual Studio Code 1.71.2 Version to write my Html, CSS, and VueJs for front end.
*  "dependencies": {
   "core-js": "^3.6.5",
   "lodash": "^4.17.21",
   "nprogress": "^0.2.0",
   "vue": "^2.6.11",
   "vue-class-component": "^7.2.3",
   "vue-property-decorator": "^9.1.2",
   "vue-router": "^3.2.0",
   "vuetify": "^2.6.0",
   "vuex": "^3.4.0"}
*  I use chrome to display and inspect my website.


Executing program
Milestone 1: Setting up the development environment
* Get your project off to a good start by installing a solid, rigorous development environment VueJs as well as setting up the files you will
  need for your development work. We also need the lts version of Vuetify and a router in our project.
  🎯Once this step is completed you will have:
  ● A src folder in which we'll do all the code.
  ● A public folder with our main index.html file and logo of our website.
  Resources:
  ● For install Vue
  ● For install Vuetify in our project
  ● For install Router in our project

Milestone 2: Setting up folders and files structure of our project
First of all, we will make all the folders or files in the views folder which we have to show on our header or in the sidebar. And we also add our files or
folders to our components folder related to our views component. We also make an interface folder which we use for making interfaces of our different files.

🎯Once this step is completed you will have:
● An auth folder for user login, logout and signup.
● A client folder to show our clients.
● A team folder to show our team-mates.
● An invoices folder.
● A setting folder for user settings
Resources:
● To see folders and file structure in VS Code

Milestone 3: Setting up the Login, Signup, Sign Out page and Forget password etc.
You can now start embedding the Login, Signup, Sign Out and Forget password page in our auth folder.
🎯Once this step is completed you will have:
● A Login.vue file
● A Signup.vue file
● A Logout.vue file
● A ResetPassword.vue file
Resources:
● Use Vuetify
● Use Vuetify Form
Issue to be aware of:
● Make responsive pages for mobile and other devices.
● Pages should not overflow from the screen.

Milestone 4: Setting up the Header and Sidebar
You can now start designing the Header and Sidebar of the Project.
🎯Once this step is completed you will have:
● A nav folder in Components folder
● A config.ts file.
● A SiteNav.vue file in which all of the Sidebar components will be run.
● A Header.vue file.
Recommendations:
● Use Vuetify app-bar Component
● Use Vuetify side-bar component

Milestone 5: Embedding the Client Component in Header and Side-bar.
During this stage you will have to embed a data-table in our Client Component with CRUD options. Also add a Dialog to add more clients in clients tables.
🎯Once this step is completed you will have:
● A client folder in our views folder.
● A Client.vue file in our client folder.
● A dialog in our Client.vue file.
Resources:
● Use Vuetify data-table to display all of the clients.
● Use the Vuetify dialog component.

Milestone 6: Embedding the Invoices Component in Header and Side-bar.
During this stage you will have to embed a data-table in our Invoices Component with CRUD options. Also add a button for downloading the pdf of the table.
🎯Once this step is completed you will have:
● A invoices folder in our views folder.
● A Invoices.vue file in our invoices folder.
Resources:
● Use Vuetify data-table to display all of the invoices data.

Milestone 7: Embedding the Team Component in Header and Side-bar.
During this stage you will have to embed a data-table in our Team Component with CRUD options. Also add two dialogs. One for adding a user and one for adding his role. i.e: admin etc.
🎯Once this step is completed you will have:
● A team folder in our views folder.
● A Team.vue file in our Team folder.
● A dialog for adding more users.
● A dialog for adding the role of users.
Resources:
● Use Vuetify data-table to display all of the invoices data.
● Use the Vuetify dialog component.

Milestone 8: Embedding the Settings Component in Header and Side-bar.
During this stage you will have to embed a simple form in our Settings Component.
🎯Once this step is completed you will have:
● A Profile folder in our views folder.
● A Settings.vue file in our Profile folder.
Resources:
● Use the Vuetify form.

Milestone 9: Embedding the Time-Tracker Component in Header and Side-bar.
During this stage you will have to embed a data-table with CRUD options. Also need some input bars for selecting project, user, starting and ending time etc and a button to save the new data.
🎯Once this step is completed you will have:
● A time folder in our views folder.
● A TimeTracker.vue file in our time folder.
Resources:
● Use the Vuetify data-table.
● Use the Vuetify input-bars.
● Use the Vuetify select-bar.

GitHub Repository
https://github.com/SamiMK16/SmsWholesell_Perscholes_projec.git