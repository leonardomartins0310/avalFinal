package DAOs;

import Entidades.Tipoproduto;
import DAOs.DAOGenerico;
import static DAOs.DAOGenerico.em;
import java.util.ArrayList;
import java.util.List;

public class DAOTipoproduto extends DAOGenerico<Tipoproduto> {

    public DAOTipoproduto() {
        super(Tipoproduto.class);
    }

    public int autoIdTipoproduto() {
        Integer a = (Integer) em.createQuery("SELECT MAX(e.idTipoProduto) FROM Tipoproduto e ").getSingleResult();
        if (a != null) {
            return a + 1;
        } else {
            return 1;
        }
    }

    public List<Tipoproduto> listByNome(String nome) {
        return em.createQuery("SELECT e FROM Tipoproduto e WHERE e.tipoProduto LIKE :nome").setParameter("nome", "%" + nome + "%").getResultList();
    }

    public List<Tipoproduto> listById(int id) {
        return em.createQuery("SELECT e FROM Tipoproduto e WHERE e.idTipoProduto = :id").setParameter("id", id).getResultList();
    }

    public List<Tipoproduto> listInOrderNome() {
        return em.createQuery("SELECT e FROM Tipoproduto e ORDER BY e.tipoProduto").getResultList();
    }

    public List<Tipoproduto> listInOrderId() {
        return em.createQuery("SELECT e FROM Tipoproduto e ORDER BY e.idTipoProduto").getResultList();
    }

    public List<String> listInOrderNomeStrings(String qualOrdem) {
        List<Tipoproduto> lf;
        if (qualOrdem.equals("id")) {
            lf = listInOrderId();
        } else {
            lf = listInOrderNome();
        }

        List<String> ls = new ArrayList<>();
        for (int i = 0; i < lf.size(); i++) {
            ls.add(lf.get(i).getIdTipoProduto() + "-" + lf.get(i).getTipoProduto());
        }
        return ls;
    }
}
