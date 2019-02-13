import * as functions from 'firebase-functions';

// import * as admin from 'firebase-admin';

// const firestore = admin.firestore();

// const bitePeak = 10;

// export const biteOnCreate = functions.firestore
//   .document("logs/{logUid}/bite/{biteUid}")
//   .onCreate(async (snap, context) => {
//     const allBites = snap.ref.parent.orderBy("timestramp");
//     const logRef = snap.ref.parent.parent; //firestore.doc(`logs/${context.params.logUid}`);
//     if (!logRef || !allBites) {
//       return Promise.reject("No data found");
//     }

//     const allBitesData: number[] = (await allBites.get()).docs.map(item =>
//       item.get("value")
//     );

//     const MAX = bitePeak;

//     let sequenceFound = false;
//     let numberInSeq = 0;
//     const threshold = 3;
//     let count = 0;

//     allBitesData.forEach(x => {
//       if (x === MAX) {
//         numberInSeq++;
//         if (numberInSeq >= threshold && sequenceFound === false) {
//           count++;
//           sequenceFound = true;
//           numberInSeq = 0;
//         }
//       } else {
//         numberInSeq = 0;
//         sequenceFound = false;
//       }
//     });

//     return logRef.update({
//       confirmedBites: count
//     });
//   });

export const solenoidOnCreate = functions.firestore
  .document("logs/{logUid}/solenoid/{solenoid}")
  .onCreate(async (snap, context) => {
    const logRef = snap.ref.parent.parent;
    if (!logRef) {
      return Promise.reject("No data found");
    }
    const log = await logRef.get();
    const data = log.data();
    if (!data) {
      return Promise.reject("No data found");
    }
    const confirmedBites =
      log.exists && !isNaN(data.confirmedBites) ? data.confirmedBites : 0;
    return logRef.update({
      confirmedBites: Number(confirmedBites) + 1
    });
  });

export const tempOnCreate = functions.firestore
  .document("logs/{logUid}/temp/{tempUid}")
  .onCreate(async (snap, context) => {
    const data = snap.data();
    if (!data || isNaN(data.value)) {
      return Promise.reject("No data found");
    }

    const logRef = snap.ref.parent.parent;
    if (!logRef) {
      return Promise.reject("No data found");
    }

    const log = await logRef.get();
    const logData = log.data();
    if (!logData || !log.exists) {
      return Promise.reject("No data found");
    }

    const averageTemperature = !isNaN(logData.averageTemperature)
      ? logData.averageTemperature
      : 1;

    const temperatureCount = !isNaN(logData.temperatureCount)
      ? logData.temperatureCount
      : 0;
    const newTemperatureCount = Number(temperatureCount) + 1;

    const differential =
      (data.value - averageTemperature) / newTemperatureCount;
    const newAverage = averageTemperature + differential;

    return logRef.update({
      averageTemperature: newAverage,
      temperatureCount: newTemperatureCount
    });
  });
