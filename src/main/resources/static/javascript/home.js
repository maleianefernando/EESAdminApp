
let resultContainer = document.querySelector('#result-container');

let notasFrequenciaBtn = document.querySelector('#nota-frequencia');
let cronogramaActividadesBtn = document.querySelector('#cronograma_de_actividades');
let proprinasBtn = document.querySelector('#proprinas');
let materialAcademicoBtn = document.querySelector('#material-academico');
let logoBtn = document.querySelector('#navbar-brand');
let filtarLista = document.querySelector('#lista-nivel');

// notasFrequenciaBtn.addEventListener('click', ()=>{
//     resultContainer.innerHTML = `
//             <table class="table table-bordered border-primary" width="80%" border="1px">
//                 <thead >
//                     <tr class="table-dark">
//                         <th colspan="3" class="colspan">Teste Escrito</th>
//                         <th colspan="5" class="colspan">Teste Oral</th>
//                         <th class="colspan">Media</th>
//                     </tr>
//                     <tr>
//                         <th>Teste 1</th>
//                         <th>Teste 2</th>
//                         <th>Teste 3</th>
//                         <th>Teste 1</th>
//                         <th>Teste 2</th>
//                         <th>Teste 3</th>
//                         <th>Teste 4</th>
//                         <th>Teste 5</th>
//                         <th>Media</th>
//                     </tr>
//                 </thead>

//                 <tbody>
//                     <tr>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                     </tr>
//                 </tbody>
//             </table>


//             <table class="table table-bordered border-primary" width="80%" border="1px">
//                 <thead >
//                     <tr class="table-dark">
//                         <th colspan="2" class="colspan">Exame</th>
//                         <th class="colspan">Resultado</th>
//                     </tr>
//                     <tr>
//                         <th>Exame Escrito</th>
//                         <th>Exame Oral</th>
//                         <th>Media Final</th>
//                     </tr>
//                 </thead>

//                 <tbody>
//                     <tr>

//                         <td>0.0</td>
//                         <td>0.0</td>
//                         <td>0.0</td>
//                     </tr>
//                 </tbody>
//             </table>
    
//     `;
// });


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
} catch (error) {
    
}

try {
    logoBtn.addEventListener('click', ()=>{
        resultContainer.innerHTML = `
        
        `;
    });
} catch (error) {
    
}

try {
    filtarLista.addEventListener('change', ()=>{
        const selectedValue = event.target.value;
        
        if(selectedValue){
            window.location.href = `listar?nivel=${selectedValue}`;
        }
    })
} catch (error) {
    console.log(error);
}
