class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770092177-gdd7d46"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770092177-gdd7d46/amp-darwin-arm64"
      sha256 "e5161ba5c7275661ec5abc4349900e89db2bd585adaf3b56f52692978f80d35d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770092177-gdd7d46/amp-darwin-x64"
      sha256 "14a9ac4be9b9b6ded9a89cee4c1ff03fb46e82851e4a6e683c2a77f3ca483c6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770092177-gdd7d46/amp-linux-arm64"
      sha256 "5feed1fd41ba827eb9ef9f0e3f99f66b4f6eae4ab51e86c8daed93c0a55803f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770092177-gdd7d46/amp-linux-x64"
      sha256 "71c1cc3fbafac17f4b4da44f879c91c365115a4acc96fb394374a880e16115d4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
