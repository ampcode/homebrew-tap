class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769464397-g1d7d52"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769464397-g1d7d52/amp-darwin-arm64"
      sha256 "3f9d8e3a8f3734ff878e1729ae262a4a501668c58e21034d26acdcd0bd2abb59"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769464397-g1d7d52/amp-darwin-x64"
      sha256 "add7456e3d842eddb5be9c1ad5a2d6682190dec08bbb186b31b962d9c0d7f010"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769464397-g1d7d52/amp-linux-arm64"
      sha256 "dff15e5f84605eb1261241a1af16a1f459a7917e7585c204c77271b8a4f36ec6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769464397-g1d7d52/amp-linux-x64"
      sha256 "598477b345754cc956fda650cdadbc3c7e63ba0aa3b1f6c0181fb7ca477edcb8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
