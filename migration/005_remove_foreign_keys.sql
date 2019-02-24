-- +migrate Up

-- +migrate StatementBegin
ALTER TABLE claim
  DROP FOREIGN KEY FK_ClaimPublisher;
-- +migrate StatementEnd

-- +migrate StatementBegin
ALTER TABLE input
  DROP FOREIGN KEY FK_InputAddress;
-- +migrate StatementEnd

-- +migrate StatementBegin
ALTER TABLE support
  DROP FOREIGN KEY fk_supportedclaim,
  CHANGE COLUMN transaction_hash transaction_hash_id VARCHAR(70) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  ADD CONSTRAINT fk_transaction
    FOREIGN KEY (transaction_hash_id)
    REFERENCES transaction (hash)
      ON DELETE CASCADE
      ON UPDATE NO ACTION;
-- +migrate StatementEnd

-- +migrate StatementBegin
ALTER TABLE output
  DROP FOREIGN KEY FK_OutputTransaction,
  DROP FOREIGN KEY FK_OutputSpentByInput;
-- +migrate StatementEnd