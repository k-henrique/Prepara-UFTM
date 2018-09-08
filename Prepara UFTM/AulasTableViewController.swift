//
//  AulasTableViewController.swift
//  Prepara UFTM
//
//  Created by Karina de Oliveira Henrique on 07/09/2018.
//  Copyright © 2018 Karina de Oliveira Henrique. All rights reserved.
//

import UIKit

//TO DO: pegar a partir de um json as infos das aulas
//antes criar esse JSON
//ler as aulas e colocar

class AulasTableViewController : UITableViewController {
    
    var aulasArray = ["Aula 1", "Aula 2", "Aula 3", "Aula 4"];
    
    override func viewDidLoad() {

    }
    
    func loadAulas() {
        
    }
    
    //quando separar as aulas por categoria, cada categoria define uma secao
    func numberOfSections(_ tableView: UITableView) -> Int {
        return 1;
    }
    
    //numero de aulas em cada categoria
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aulasArray.count;
    }
    
    //colocar aqui
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "aula_cell", for: indexPath) as! AulaTableViewCell
        cell.nome_aula.text = self.aulasArray[indexPath.row]

        return cell;
    }
    
    //enviar os dados da celula pressionada
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        print("You selected cell #\(indexPath.row)!")
        
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at:indexPath)! as UITableViewCell
        
        _ = currentCell.textLabel?.text
        performSegue(withIdentifier: "segue_present_aula_detalhes", sender: self)
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        
        if (segue.identifier == "segue_present_aula_detalhes") {
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destination as! AulaDetalhesViewController
            // your new view controller should have property that will store passed value
            viewController.detalhes_label.text = "TESTE"
        }
    }


    
}
