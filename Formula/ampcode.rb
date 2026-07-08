class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783542413-gb55c7a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783542413-gb55c7a/amp-darwin-arm64"
      sha256 "3421f4211e00a6328fddf45e5a9d4db6393a7d4f2c31c9f68ca6da5bde895c0b"
    else
      url "https://static.ampcode.com/cli/0.0.1783542413-gb55c7a/amp-darwin-x64"
      sha256 "da791f8a88eaf1d83125b107766c87948cd217ca6619ff59c83ad34516b05fed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783542413-gb55c7a/amp-linux-arm64"
      sha256 "895a0623d01b998d6ce1820d93d1deeef21b7c5f9874a4508ef00a7701fbc7c1"
    else
      url "https://static.ampcode.com/cli/0.0.1783542413-gb55c7a/amp-linux-x64"
      sha256 "666891a5663e83e845c581d0a4ab7e2117afb3c984b2b4ff1ac3980d9bcc0c2d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
