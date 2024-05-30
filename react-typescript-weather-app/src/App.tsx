import { useState } from "react";
import Title from "./components/Title";
import Form from "./components/Form";
import Results from "./components/Results";
import './App.css';

function App() {
  const [city,setCity] = useState<string>("");
    const getWeather = (e: any) => {
        e.preventDefault();
        fetch("http://api.weatherapi.com/v1/current.json?key=cb54494cc2a845f3b36145131240302&q=London&aqi=no")
        .then(res => res.json())
        .then(data => console.log(data))
    }
  return (
    <div className="test">
      <Title />
      <Form setCity={setCity} getWeather={getWeather}/>
      <Results />
    </div>
  );
}

export default App;
