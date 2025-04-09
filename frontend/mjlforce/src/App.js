import React, { useState } from "react";
import AppRouter from "./router/AppRouter";

import Auth from "./auth/Auth";

function App() {
  const { token, logout } = Auth();

  const [isUserLoggedIn, setUserLoggedIn] = useState(token ? true : false);

  return <AppRouter />;
}

export default App;
