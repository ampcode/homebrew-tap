class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791561655-g7895f0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791561655-g7895f0/amp-darwin-arm64"
      sha256 "f2dc9f7d727d932d7282a2a565d00b0a5438d66617b0c0a7dc0a16c592f363dc"
    else
      url "https://static.ampcode.com/cli/0.0.1791561655-g7895f0/amp-darwin-x64"
      sha256 "238058321cced9aaf181c9697e0848c75362c1c4dd38bbf08681e6f16dbe0138"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791561655-g7895f0/amp-linux-arm64"
      sha256 "d2e6c33e4a6ef08223594142cc4bd796f25171242d644a72112794d6c1fbfc76"
    else
      url "https://static.ampcode.com/cli/0.0.1791561655-g7895f0/amp-linux-x64"
      sha256 "2fdbbf5b17b863646f1622268ccea94942a07b26047b3d276fb45e13dbd649f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
