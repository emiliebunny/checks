process.env.TZ="Asia/Bangkok";
console.log("test", new Date());
console.log(new Date().toLocaleString('th-TH', { timeZone: 'Asia/Bangkok' }));
console.log(new Date().toLocaleString('en-US', { timeZone: 'Asia/Bangkok' }));


