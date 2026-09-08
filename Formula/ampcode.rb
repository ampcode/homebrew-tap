class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788840034-ge4b308"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788840034-ge4b308/amp-darwin-arm64"
      sha256 "ef55663b2707d0d712372d221e824304a05e344303978acad0d214572e6e8e2a"
    else
      url "https://static.ampcode.com/cli/0.0.1788840034-ge4b308/amp-darwin-x64"
      sha256 "2046238fbba9f94ef421fe53f002cd5d5cc78c37464407b7b89dfaef15581592"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788840034-ge4b308/amp-linux-arm64"
      sha256 "72498467b2c0b42e6e60950ad643d86fa463d4a6c23b6eed656a3ccd672f596e"
    else
      url "https://static.ampcode.com/cli/0.0.1788840034-ge4b308/amp-linux-x64"
      sha256 "c6e0909254e1231ef419a9b3b105c9fa3d80763519f96b88976027f96ccfa814"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
