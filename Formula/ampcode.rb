class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785660266-g6a1789"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785660266-g6a1789/amp-darwin-arm64"
      sha256 "a63f9d7433094a739b8d230f154974e6a232a799d2c5154a2b6fb2c71315f90b"
    else
      url "https://static.ampcode.com/cli/0.0.1785660266-g6a1789/amp-darwin-x64"
      sha256 "72bbb07ab93f143dd3d87f91685884a0fa7aa2e7f2b4502ee4ed2871eaa9c995"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785660266-g6a1789/amp-linux-arm64"
      sha256 "10965a4d17b96701977d2482134647e39eab256e8dde211e8c72df018e83b3e6"
    else
      url "https://static.ampcode.com/cli/0.0.1785660266-g6a1789/amp-linux-x64"
      sha256 "4ebf708c9d79956250f97c2417a0f691bb8b640dd997e5c9366849973602eb09"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
