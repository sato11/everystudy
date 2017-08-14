function countdown(seconds) {
  return new Promise( (onFulfilled, onRejected) => {
    const timeoutIds = [];
    for (let i = seconds; i >= 0; i--) {
      timeoutIds.push(setTimeout( () => {
        if (i === 13) {
          timeoutIds.forEach(clearTimeout);
          onRejected(new Error("ominous number doesn't count."));
        } else if (i > 0) {
          console.log(`${i}...`);
        } else {
          console.log('Go!');
          onFulfilled();
        }
      }, (seconds - i) * 1000));
    }
  });
}

function launch() {
  return new Promise( (onFulfilled, onRejected) => {
    if (Math.random() < 0.5) return;
    console.log('Launch!');
    setTimeout(() => {
      onFulfilled('Entered in the orbit.');
    }, 2 * 1000);
  });
}

function addTimeout(fn, period) {
  if (period == undefined) period == 1000;
  return (...args) => {
    return new Promise( (onFulfilled, onRejected) => {
      const timeoutId = setTimeout(onRejected, period, new Error('Process timed out.'));
      fn(...args)
        .then((...args) => {
          clearTimeout(timeoutId);
          onFulfilled(...args);
        })
        .catch((...args) => {
          clearTimeout(timeoutId);
          onRejected(...args);
        })
    });
  }
}

const num = 3;

countdown(num)
    .then(addTimeout(launch, 4 * 1000))
    .then( msg => {
      console.log(msg);
    })
    .catch( err => {
      console.error(err.message);
    })
