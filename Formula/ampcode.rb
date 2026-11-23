class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795392057-g03d1fb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795392057-g03d1fb/amp-darwin-arm64"
      sha256 "3ea31b075fe1b454034b5b2de5c4789b668b4c2ecb5be066a2fb4a966226ef99"
    else
      url "https://static.ampcode.com/cli/0.0.1795392057-g03d1fb/amp-darwin-x64"
      sha256 "ccb165cd39250b3daa6bd60e11495b2a890d2587618ed465fbc9f1a82aee727a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795392057-g03d1fb/amp-linux-arm64"
      sha256 "2da2d96257eef07f2c46ecb0cefbcf18e58287c7e2d191218c0c8e802567f43e"
    else
      url "https://static.ampcode.com/cli/0.0.1795392057-g03d1fb/amp-linux-x64"
      sha256 "3f5bffbc557cd918a6f694e5a0ae6b7909462434c6daad3de87ce79b7a66fdb1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
