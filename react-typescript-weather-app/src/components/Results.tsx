type ResultsPropsType = {
    results{
    country: string;
    cityName: string;
    tempreture: string;
    conditionText: string;
    icon: string;
    }
}

const Result = (props: ResultsPropsType) => {
    return(
<h1>気象データ {props.results.country}</h1>
    );
};

export default Result
