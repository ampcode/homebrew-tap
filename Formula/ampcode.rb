class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775160492-geab1e6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775160492-geab1e6/amp-darwin-arm64"
      sha256 "4ff0849469ad9cc6584031fa15e3378a1590e29afd86aea1ebc4b60934836943"
    else
      url "https://static.ampcode.com/cli/0.0.1775160492-geab1e6/amp-darwin-x64"
      sha256 "9fcfb69559c818175e19323ddebaa94c4b428b5a7b66e34d133499ca21a1bcf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775160492-geab1e6/amp-linux-arm64"
      sha256 "362e0186a889545af0ad71864622d1902e1213da35011656ed1939feee014b1b"
    else
      url "https://static.ampcode.com/cli/0.0.1775160492-geab1e6/amp-linux-x64"
      sha256 "45fc34f4d21a9a82d9854fbffa3b57d00251d564acf1520401a39e76e6f44b50"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
