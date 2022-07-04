/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Usuário
 */
@Entity
@Table(name = "ator", catalog = "atores2", schema = "")
@NamedQueries({
    @NamedQuery(name = "Ator.findAll", query = "SELECT a FROM Ator a")
    , @NamedQuery(name = "Ator.findByCodigo", query = "SELECT a FROM Ator a WHERE a.codigo = :codigo")
    , @NamedQuery(name = "Ator.findByNome", query = "SELECT a FROM Ator a WHERE a.nome = :nome")
    , @NamedQuery(name = "Ator.findByAnonascimento", query = "SELECT a FROM Ator a WHERE a.anonascimento = :anonascimento")
    , @NamedQuery(name = "Ator.findBySignoator", query = "SELECT a FROM Ator a WHERE a.signoator = :signoator")
    , @NamedQuery(name = "Ator.findBySexo", query = "SELECT a FROM Ator a WHERE a.sexo = :sexo")
    , @NamedQuery(name = "Ator.findByOrientacaosexual", query = "SELECT a FROM Ator a WHERE a.orientacaosexual = :orientacaosexual")
    , @NamedQuery(name = "Ator.findByTempocarreira", query = "SELECT a FROM Ator a WHERE a.tempocarreira = :tempocarreira")})
public class Ator implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    @Column(name = "nome")
    private String nome;
    @Column(name = "anonascimento")
    private Integer anonascimento;
    @Column(name = "signoator")
    private String signoator;
    @Column(name = "sexo")
    private String sexo;
    @Column(name = "orientacaosexual")
    private String orientacaosexual;
    @Column(name = "tempocarreira")
    private Integer tempocarreira;

    public Ator() {
    }

    public Ator(Integer codigo) {
        this.codigo = codigo;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        Integer oldCodigo = this.codigo;
        this.codigo = codigo;
        changeSupport.firePropertyChange("codigo", oldCodigo, codigo);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        String oldNome = this.nome;
        this.nome = nome;
        changeSupport.firePropertyChange("nome", oldNome, nome);
    }

    public Integer getAnonascimento() {
        return anonascimento;
    }

    public void setAnonascimento(Integer anonascimento) {
        Integer oldAnonascimento = this.anonascimento;
        this.anonascimento = anonascimento;
        changeSupport.firePropertyChange("anonascimento", oldAnonascimento, anonascimento);
    }

    public String getSignoator() {
        return signoator;
    }

    public void setSignoator(String signoator) {
        String oldSignoator = this.signoator;
        this.signoator = signoator;
        changeSupport.firePropertyChange("signoator", oldSignoator, signoator);
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        String oldSexo = this.sexo;
        this.sexo = sexo;
        changeSupport.firePropertyChange("sexo", oldSexo, sexo);
    }

    public String getOrientacaosexual() {
        return orientacaosexual;
    }

    public void setOrientacaosexual(String orientacaosexual) {
        String oldOrientacaosexual = this.orientacaosexual;
        this.orientacaosexual = orientacaosexual;
        changeSupport.firePropertyChange("orientacaosexual", oldOrientacaosexual, orientacaosexual);
    }

    public Integer getTempocarreira() {
        return tempocarreira;
    }

    public void setTempocarreira(Integer tempocarreira) {
        Integer oldTempocarreira = this.tempocarreira;
        this.tempocarreira = tempocarreira;
        changeSupport.firePropertyChange("tempocarreira", oldTempocarreira, tempocarreira);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ator)) {
            return false;
        }
        Ator other = (Ator) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "view.Ator[ codigo=" + codigo + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
