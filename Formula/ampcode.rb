class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775823033-g603238"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775823033-g603238/amp-darwin-arm64"
      sha256 "73b7b27433a2866db598a4f4ace535f75bd0425f011b831b8b2087c83f25d1eb"
    else
      url "https://static.ampcode.com/cli/0.0.1775823033-g603238/amp-darwin-x64"
      sha256 "f5bd3c356a7ab16ba3e83218a790bc15339af2249d4fe4ddb466c736c64d2598"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775823033-g603238/amp-linux-arm64"
      sha256 "e0653283ee6112427a709079e6a4af67133015929070e7373903d5853259a058"
    else
      url "https://static.ampcode.com/cli/0.0.1775823033-g603238/amp-linux-x64"
      sha256 "9ea38adf8329dac99ecd389a6a5bdeeee19fc442de17c399cdac036fdfe0abe7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
