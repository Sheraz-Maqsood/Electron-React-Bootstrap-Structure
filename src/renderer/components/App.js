import React from 'react';
import Header from './Header';
import Footer from './Footer';
import Sidebar from './Sidebar';
import HomePage from '../pages/HomePage';

const App = () => {
  return (
    <div >
      <Header />
      <Sidebar />
      <HomePage />
      <Footer />
    </div>
  );
};

export default App;
