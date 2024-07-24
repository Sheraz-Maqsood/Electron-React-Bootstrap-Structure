import axios from 'axios';

const apiService = axios.create({
  baseURL: 'https://api.example.com'
});

export default apiService;
