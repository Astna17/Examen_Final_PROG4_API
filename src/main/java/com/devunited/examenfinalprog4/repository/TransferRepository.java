package com.devunited.examenfinalprog4.repository;

import com.devunited.examenfinalprog4.model.Transfers;

import java.sql.SQLException;
import java.util.List;

public interface TransferRepository {
    List<Transfers> getAllTransfers() throws SQLException;

    Transfers getTransferById(int id) throws SQLException;

    Transfers createTransfer(Transfers transfer) throws SQLException;
    Transfers updateTransfer(int id, Transfers transfer) throws SQLException;
}
