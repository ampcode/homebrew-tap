class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777708587-ge5e9da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777708587-ge5e9da/amp-darwin-arm64"
      sha256 "76046f602da8f0dc2fe40f76a8cac10f2cb4f4c8a7d7bd9a6f30fb892110b1d6"
    else
      url "https://static.ampcode.com/cli/0.0.1777708587-ge5e9da/amp-darwin-x64"
      sha256 "dd61ecfc3e0005f30a5fac9aad4028ad45e47f0de239687772806bdd24839ec3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777708587-ge5e9da/amp-linux-arm64"
      sha256 "db71c4e05fa9d19c2a51348d0c576d76b068a93064d6c311a270e12f5ecc1097"
    else
      url "https://static.ampcode.com/cli/0.0.1777708587-ge5e9da/amp-linux-x64"
      sha256 "1a26149249a1a8fc2f7b428678f7ef9779755134b859d97073062d5b1994eb51"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
