  Dado('que acesso um endpoint') do
    @country = 'Brazil'
    @urlCountry = "https://corona.lmao.ninja/v3/covid-19/countries/#{@country}"
  end
  
  Quando('realizo uma requisição usando o método GET') do
    @response = HTTParty.get @urlCountry
  end
  
  Então('a API deve retornar as informações atualizadas') do
    expect(@response.code).to eq 200
  end
  
  Então('validar o contrato por sua estrutura') do
    expect(@response.body).to match_json_schema('GET-APIcovidCountry.schema')
  end
  
  Então('validar dados do país') do
    expect(@response['country']).to eql("Brazil")
    expect(@response['continent']).to eql("South America")
    expect(@response['countryInfo']['_id']).to eql(76)
    expect(@response['countryInfo']['iso2']).to eql("BR")
    expect(@response['countryInfo']['iso3']).to eql("BRA")
    expect(@response['countryInfo']['lat']).to eql(-10)
    expect(@response['countryInfo']['long']).to eql(-55)
    expect(@response['countryInfo']['flag']).to match(/br.png/)
  end