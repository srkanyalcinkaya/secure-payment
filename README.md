# 🚀 Secure Payment System (Escrow Smart Contract)

Bu proje, Ethereum blockchain üzerinde alıcı ve satıcı arasında güvenli ödeme işlemlerini sağlayan bir **Escrow (emanet)** sistemi oluşturur. Alıcı ödemeyi yapar, ödeme akıllı sözleşmede kilitlenir ve işlem yalnızca satıcı onayladığında veya belirlenen süre aşıldığında tamamlanır.

## 📑 Özellikler

- **Güvenli Ödeme:** Alıcıdan alınan ödeme, akıllı sözleşmede güvence altına alınır.
- **Onay Gereksinimi:** Satıcı, ödemeyi almak için işlemi onaylamalıdır.
- **Zaman Aşımı İadesi:** Satıcı, belirlenen süre içinde onay vermezse alıcı, ödemenin iadesini talep edebilir.
- **Blockchain Tabanlı:** İşlemler Ethereum blockchain üzerinden gerçekleştirilir ve merkezi olmayan yapıya sahiptir.

## 🛠️ Teknolojiler

- **Solidity**: Akıllı sözleşme geliştirme dili
- **Ethers.js**: Ethereum blockchain ile JavaScript üzerinden etkileşim için
- **React.js**: Kullanıcı arayüzü oluşturma
- **MetaMask**: Kullanıcı cüzdanı ve blockchain işlemleri için

## 📂 Proje Yapısı

```
├── contracts
│   └── Escrow.sol       # Akıllı sözleşme
├── ignition/modules
│   └── Escrow.js        # Akıllı sözleşme dağıtım betiği
├── src
│   └── App.js           # React ana dosya
├── package.json
├── README.md
└── hardhat.config.js    # Hardhat yapılandırma dosyası
```

## 🚀 Başlangıç

### 1. Depoyu Klonlayın

```bash
git clone https://github.com/kullanıcı-adı/secure-payment-system.git
cd secure-payment-system
```

### 2. Gerekli Bağımlılıkları Yükleyin

```bash
npm install
```

### 3. Akıllı Sözleşmeyi Dağıtın

Hardhat kullanarak yerel ağda akıllı sözleşmeyi dağıtın:

```bash
npx hardhat node
npx hardhat run scripts/deploy.js --network localhost
```

### 4. React Uygulamasını Başlatın

```bash
npm start
```

### 5. MetaMask Cüzdanını Bağlayın

Tarayıcıda [http://localhost:3000](http://localhost:3000) adresine gidin ve cüzdanınızı bağlayın.

## 🤝 Katkıda Bulunun

Bu projeyi geliştirmek isterseniz, pull request göndermekten çekinmeyin veya yeni özellik önerilerinizi paylaşın.

## 📄 Lisans

Bu proje MIT lisansı ile lisanslanmıştır.

--- 

Projeyle ilgili geri bildirim ve katkılarınızı bekliyorum!
