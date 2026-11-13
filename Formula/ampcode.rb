class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794542441-g4e0611"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794542441-g4e0611/amp-darwin-arm64"
      sha256 "8f5d55fad6d8b2b77dc9b969c5267eaf00a86575420b3ee38fabdfd1596ad653"
    else
      url "https://static.ampcode.com/cli/0.0.1794542441-g4e0611/amp-darwin-x64"
      sha256 "3477bc5b1c5b3dac84816e94b88821a56734935cf3e200215aa47d8acd7377cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794542441-g4e0611/amp-linux-arm64"
      sha256 "098a5b354543a2cef26e8756da658f0dcc3f48d252d73a1b134caed0c4449e53"
    else
      url "https://static.ampcode.com/cli/0.0.1794542441-g4e0611/amp-linux-x64"
      sha256 "c2268db73802baa5e432feae3f2bfad79f902352c207f7b9ae371dbb1d91ee18"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
