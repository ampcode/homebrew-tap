class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781597569-g501d99"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781597569-g501d99/amp-darwin-arm64"
      sha256 "2dd82aae1d1a213962b950601f971c7dab1bc6ff2ce275da68b6250e1fc377e3"
    else
      url "https://static.ampcode.com/cli/0.0.1781597569-g501d99/amp-darwin-x64"
      sha256 "371e184cd729a7d1c92ee53f06ee845a323e3985899f0a5b17167436c990bdd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781597569-g501d99/amp-linux-arm64"
      sha256 "d00a4805a05a8f8d601f737c80cd6c52200e1c1218c720817f8b085d228c8b14"
    else
      url "https://static.ampcode.com/cli/0.0.1781597569-g501d99/amp-linux-x64"
      sha256 "e5b74707dbd47dcee05e88e8940869e2e842e382a5fb3a6b55f571010a036f35"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
