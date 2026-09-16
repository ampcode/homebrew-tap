class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789545662-ge8425e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789545662-ge8425e/amp-darwin-arm64"
      sha256 "7d98a4cb639437b56931ace01b62382b63ed3ac329109f317d5b7a3da443cefc"
    else
      url "https://static.ampcode.com/cli/0.0.1789545662-ge8425e/amp-darwin-x64"
      sha256 "924ccae8cfdeb5225b2b1ba334564e34fe853e5f6ce76fd9b753e097de7ae847"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789545662-ge8425e/amp-linux-arm64"
      sha256 "590f51723e6e89981d146e332938b6bf86d75f09d27860f3d1acb2a218513f60"
    else
      url "https://static.ampcode.com/cli/0.0.1789545662-ge8425e/amp-linux-x64"
      sha256 "47275d0bddbf60f440ba3f073f0900f0462fb53cc574b0de93c1d13239e7d46d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
