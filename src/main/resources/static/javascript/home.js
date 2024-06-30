
let resultContainer = document.querySelector('#result-container');

let notasFrequenciaBtn = document.querySelector('#nota-frequencia');
let cronogramaActividadesBtn = document.querySelector('#cronograma_de_actividades');
let proprinasBtn = document.querySelector('#proprinas');
let materialAcademicoBtn = document.querySelector('#material-academico');
let logoBtn = document.querySelector('#navbar-brand');
let filtarLista = document.querySelector('#select-nivel');


try {
    cronogramaActividadesBtn.addEventListener('click', ()=>{
        console.log('crono');
        resultContainer.innerHTML = `
        
        `;
    });
} catch (error) {
    
}

try {
    proprinasBtn.addEventListener('click', ()=>{
        console.log('prop');
        resultContainer.innerHTML = `
        
        `;
    });
} catch (error) {
    
}

try {
    materialAcademicoBtn.addEventListener('click', ()=>{
        console.log('material');
        resultContainer.innerHTML = `
        
        `;
    });
} catch (err) {
    console.log(err)
}

try {
    logoBtn.addEventListener('click', ()=>{
        resultContainer.innerHTML = `
        
        `;
    });
} catch (err) {
    console.log(err);
}

/*
* Script a nivel da rota de todos templates com alguma tabela de exibicao de dados de estudantes
*/
try {
    filtarLista.addEventListener('change', ()=>{
        const selectedValue = event.target.value;
        // alert(window.location.pathname)

        for(let child of filtarLista.children){
            (selectedValue == child.value) ? child.selected=true : console.log(false)
        }

        if(selectedValue){
            if(window.location.pathname === '/estudante/listar'){
                window.location.href = `listar?nivel=${selectedValue}`;
            }
            else if(window.location.pathname === '/estudante/desempenho'){
                window.location.href = `desempenho?nivel=${selectedValue}`;
            }
        }
    })
} catch (err) {
    console.log(err);
}

/*
* Script a nivel da rota do template de registo de estudantes
*/
try{
    if(window.location.href == 'http://localhost:9091/estudante/registar?success=true'){
        window.addEventListener('DOMContentLoaded', ()=>{
            window.alert('Estudante registado');
        })
        
    }
    else if(window.location.href == 'http://localhost:9091/estudante/registar?success=false'){
        window.addEventListener('DOMContentLoaded', ()=>{
            window.alert('Não foi possivel registar estudante, ocorreu um erro');
        })
    }
}
catch(err){
    console.log(err);
}

/*
* Script a nivel da rota do template de pagamento de mensalidades
*/
try{
    if(window.location.href == 'http://localhost:9091/estudante/mensalidades?payment_succes=true'){
        window.addEventListener('DOMContentLoaded', ()=>{
            window.alert('Pagamento efectuado com sucesso!')
        })
    }
    else if(window.location.href == 'http://localhost:9091/estudante/mensalidades?payment_succes=false'){
        window.addEventListener('DOMContentLoaded', ()=>{
            window.alert('Ocorreu um erro ao tentar efectuao pagamento!')
        })
    }
}catch(err){
    console.log(err);
}