const { DirectSecp256k1HdWallet } = require('@cosmjs/proto-signing');

async function generateWallets(count) {
    const wallets = [];
    for (let i = 0; i < count; i++) {
        const mnemonic = await DirectSecp256k1HdWallet.generateMnemonic();
        const wallet = await DirectSecp256k1HdWallet.fromMnemonic(mnemonic);
        const [firstAccount] = await wallet.getAccounts();
        
        wallets.push({
            address: firstAccount.address,
            mnemonic: mnemonic
        });
    }
    return wallets;
}

async function main() {
    const wallets = await generateWallets(30);

    wallets.forEach((wallet) => {
        console.log(`${wallet.address};${wallet.mnemonic}`);
    });
}

main().catch(console.error);
