class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771907593-ge4e6f0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771907593-ge4e6f0/amp-darwin-arm64"
      sha256 "cc07f1af81939f4a6784a5963cad97e34f26fefffacac792389c393444ebef9b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771907593-ge4e6f0/amp-darwin-x64"
      sha256 "24fec38a56da1d6de1db68569f43cddb577f79c27e7fdcdb358897260d9aab2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771907593-ge4e6f0/amp-linux-arm64"
      sha256 "c88068617428fca0ef4303ca559d50742d5e3f38ecf7b593ddbfe94c9ad7d126"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771907593-ge4e6f0/amp-linux-x64"
      sha256 "739994660cf53dd9199cb482d43f3bd99c7b786a1fa2217099e999f8fa16ecff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
