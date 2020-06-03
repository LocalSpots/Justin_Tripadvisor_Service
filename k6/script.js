import http from 'k6/http';
import { check } from "k6";
import { sleep } from 'k6';
import { Rate } from "k6/metrics";
// const faker = require('faker');

// export let options = {
//     vus: 100,
//     duration: '5m',
// };
export let options = {
    stages: [
        { duration: '1m', target: 300 },
        { duration: '5m', target: 500 },
        { duration: '3m', target: 0 },
    ],
};


export default function () {
    const id = Math.floor(Math.random()*(1000000-(1000000-999990)))
    // const id = faker.random.number({ 'min': 999900, 'max': 1000000 });
    const res = http.get(`http://localhost:3000/tour/${id}`);
    check(res, {
        "is status 200 ": (result) => result.status === 200,
        "Error Rate ": (result) => result.status !== 200,
    })
    sleep(0.5);
}


// k6 run --vus 10 --duration 30s script.js