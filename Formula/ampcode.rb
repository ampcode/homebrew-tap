class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791388870-g4d32fb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791388870-g4d32fb/amp-darwin-arm64"
      sha256 "da9329894bc7698a7826f95d22cabdda73bd0e7351567ba010987c46aaf59362"
    else
      url "https://static.ampcode.com/cli/0.0.1791388870-g4d32fb/amp-darwin-x64"
      sha256 "54682d75cb98bed6e6fcfe075d270b5f0bb2fed95010d56194ea3b91cd28be0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791388870-g4d32fb/amp-linux-arm64"
      sha256 "c1f6042890dd858f2d248a86d9f8fa9c325d8e1eba01e2e40a150c05bedf3619"
    else
      url "https://static.ampcode.com/cli/0.0.1791388870-g4d32fb/amp-linux-x64"
      sha256 "c94e9db89af45a4b2466316b35f34d5f4e17c39ad279072e5c60f1fd512de36b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
