class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770509144-g9adfc0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770509144-g9adfc0/amp-darwin-arm64"
      sha256 "2ef3b777b179ccfef65a60138d31921513d03779046a0a9ab6b4163f9c943426"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770509144-g9adfc0/amp-darwin-x64"
      sha256 "699ce7620cb9b4273522bcb75268cbcd8db3247f0588f0455ca5f29cce9e085f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770509144-g9adfc0/amp-linux-arm64"
      sha256 "fb2b399ca50c1a380e47e727981e40adc5bda64bfa701d27c44a7b9ebb646363"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770509144-g9adfc0/amp-linux-x64"
      sha256 "9c0b931b2be1d26aa5af0c2e90daa32f696435d0c8222fe64d8d1703710f9e33"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
