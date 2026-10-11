class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791720050-g0a7ff0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791720050-g0a7ff0/amp-darwin-arm64"
      sha256 "c3231a61fa29f68a9806050744e729d6241c19f6e0e84378665ab71bbad66281"
    else
      url "https://static.ampcode.com/cli/0.0.1791720050-g0a7ff0/amp-darwin-x64"
      sha256 "b17d27fb77c9b847e9088a990e47f5f26771e0d110774039a94e6719a160c3c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791720050-g0a7ff0/amp-linux-arm64"
      sha256 "71bf8b505d128314aa7b3310a86d7507a732f3c1b0eaf759c2a4a54cea726801"
    else
      url "https://static.ampcode.com/cli/0.0.1791720050-g0a7ff0/amp-linux-x64"
      sha256 "2b1701c446e7aa00048707437192c08fbb8660b68a4a6fca68e30653336bb9a2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
