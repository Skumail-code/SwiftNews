import UIKit

class ArtifactHandler: NewsTableHandler {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ArtifactCell.identifier) as! ArtifactCell

        let article = articles[indexPath.row]
        cell.load(article: article)

        return cell
    }

}
