package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public final class DAOUtilitaire {
	private DAOUtilitaire() {
	}

	/*
	 * Initialise la requ�te pr�par�e bas�e sur la connexion pass�e en argument,
	 * avec la requ�te SQL et les objets donn�s.
	 */
	public static PreparedStatement initialisationRequetePreparee(Connection connexion, String sql,
			boolean returnGeneratedKeys, Object... objets) throws SQLException {
		PreparedStatement preparedStatement = connexion.prepareStatement(sql,
				returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS);
		for (int i = 0; i < objets.length; i++) {
			preparedStatement.setObject(i + 1, objets[i]);
		}
		return preparedStatement;
	}

	/*
	 * Simple m�thode utilitaire permettant de faire la correspondance (le mapping)
	 * entre une ligne issue de la table des utilisateurs (un ResultSet) et un bean
	 * Utilisateur.
	 */

	/* Fermeture silencieuse du resultset */
	public static void fermetureSilencieuse(ResultSet resultSet) {
		if (resultSet != null) {
			try {
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("�chec de la fermeture du ResultSet : " + e.getMessage());
			}
		}
	}

	/* Fermeture silencieuse du statement */
	public static void fermetureSilencieuse(Statement statement) {
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				System.out.println("�chec de la fermeture du Statement : " + e.getMessage());
			}
		}
	}

	/* Fermeture silencieuse de la connexion */
	public static void fermetureSilencieuse(Connection connexion) {
		if (connexion != null) {
			try {
				connexion.close();
			} catch (SQLException e) {
				System.out.println("�chec de la fermeture de la connexion : " + e.getMessage());
			}
		}
	}

	/* Fermetures silencieuses du statement et de la connexion */
	public static void fermeturesSilencieuses(Statement statement, Connection connexion) {
		fermetureSilencieuse(statement);
		fermetureSilencieuse(connexion);
	}

	/* Fermetures silencieuses du resultset, du statement et de la connexion */
	public static void fermeturesSilencieuses(ResultSet resultSet, Statement statement, Connection connexion) {
		fermetureSilencieuse(resultSet);
		fermetureSilencieuse(statement);
		fermetureSilencieuse(connexion);
	}

}
