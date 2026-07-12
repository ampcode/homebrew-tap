class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783815401-g6f54f0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783815401-g6f54f0/amp-darwin-arm64"
      sha256 "59a11de337b096d289584b5baee737c935736555a0b93d5ad15552704ac3c7cd"
    else
      url "https://static.ampcode.com/cli/0.0.1783815401-g6f54f0/amp-darwin-x64"
      sha256 "9dd4946bbcd53f927012c1a8b7e323378b54fc3806b061356132982b225b3095"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783815401-g6f54f0/amp-linux-arm64"
      sha256 "3fc32759ab1077ba83f528df36d440e04e4a835cfa6c935e94d9aaf9beb622d8"
    else
      url "https://static.ampcode.com/cli/0.0.1783815401-g6f54f0/amp-linux-x64"
      sha256 "c6fce6a660758991d8eb32c90854393f9f5ae230c65a86d5d8b90741b6fbb210"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
