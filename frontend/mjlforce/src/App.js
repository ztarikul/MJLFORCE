import React from "react";
import "./App.css";

import Header from "./components/Header";
import Sider from "./components/Sider";
import Footer from "./components/Footer";

function App() {
  return (
    <div className="page-wrapper compact-wrapper" id="pageWrapper">
      <Header />
      <div className="page-body-wrapper sidebar-icon">
        <Sider />
        <Footer />
      </div>
    </div>
  );
}

export default App;
