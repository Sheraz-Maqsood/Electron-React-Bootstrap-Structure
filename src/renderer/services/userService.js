import apiService from './apiService';

export const getUser = async (userId) => {
  const response = await apiService.get(`/users/${userId}`);
  return response.data;
};
