import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
    vus: 325,
    duration: '10s',
};

export default function() {
  const id = Math.floor(Math.random()*1000000)
  http.get(`http://localhost:3000/${id}`);
  sleep(0.1);
}


// k6 run --vus 10 --duration 30s script.js