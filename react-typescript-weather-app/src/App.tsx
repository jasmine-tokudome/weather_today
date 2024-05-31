import { useState } from "react";
import Title from "./components/Title";
import Form from "./components/Form";
import Results from "./components/Results";
import './App.css';

type ResultsStateType = {
  country: string;
    cityName: string;
    tempreture: string;
    conditionText: string;
    icon: string;
}

function App() {
  const [city,setCity] = useState<string>("");
  const [results,setResults] = useState<ResultsStateType>({
    country: "",
    cityName: "",
    tempreture: "",
    conditionText: "",
    icon: ""
  });
    const getWeather = (e: any) => {
        e.preventDefault();
        fetch("http://api.weatherapi.com/v1/current.json?key=cb54494cc2a845f3b36145131240302&q=London&aqi=no")
        .then(res => res.json())
        .then(data => {
          setResults({
            country: data.location.country,
    cityName: data.location.name,
    tempreture: data.current.condition.temp_c,
    conditionText: data.current.condition.text,
    icon: data.current.condition.icon
          })
        })
    }
  return (
    <div className="test">
      <Title />
      <Form setCity={setCity} getWeather={getWeather}/>
      <Results results={results}/>
    </div>
  );
}

export default App;
