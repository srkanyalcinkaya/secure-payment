// Hardhat Ignition kullanarak deploy scripti
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const DEFAULT_DURATION_MINUTES = 60;

module.exports = buildModule("EscrowModule", (m) => {
  const sellerAddress = m.getParameter("sellerAddress", "0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"); // Satıcı adresini gir
  const durationMinutes = m.getParameter("durationMinutes", DEFAULT_DURATION_MINUTES);

  // Escrow sözleşmesini oluştur
  const escrow = m.contract("Escrow", [sellerAddress, durationMinutes]);

  return { escrow };
});
