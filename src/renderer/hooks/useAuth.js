import { useState } from 'react';

const useAuth = () => {
  const [authenticated, setAuthenticated] = useState(false);

  const login = () => {
    setAuthenticated(true);
  };

  const logout = () => {
    setAuthenticated(false);
  };

  return { authenticated, login, logout };
};

export default useAuth;
