// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `.angular-cli.json`.
export const environment = {
  production: false,
  realTimePage: "/app/tabs/(real-time:real-time)",
  controlsPage: "/app/tabs/(controls:controls)",
  logPage: "/app/tabs/(log:log)",
  connectToBobberPage: "/connect-to-bobber",
  weatherKey: "c5bbcba351ad2abcdfda69cc83e88aea",
  firebase: {
    apiKey: "AIzaSyC37sl9561LwG5eVQf-pWScjAe2wLoMfy4",
    authDomain: "thesmartbobber.firebaseapp.com",
    databaseURL: "https://thesmartbobber.firebaseio.com",
    projectId: "thesmartbobber",
    storageBucket: "thesmartbobber.appspot.com",
    messagingSenderId: "63099600878"
  },
  bitePeak: 10
};

/*
 * In development mode, to ignore zone related error stack frames such as
 * `zone.run`, `zoneDelegate.invokeTask` for easier debugging, you can
 * import the following file, but please comment it out in production mode
 * because it will have performance impact when throw error
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.
