class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793332853-ge7c6c6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793332853-ge7c6c6/amp-darwin-arm64"
      sha256 "754cd6e3e7c89d20639288c0c51c6b3aaf7e1e05b1e96387b19632c5194fd91e"
    else
      url "https://static.ampcode.com/cli/0.0.1793332853-ge7c6c6/amp-darwin-x64"
      sha256 "c724f6c438c20702056d93be0d71b5925b6606d71e2b15fa3446abb88ba6efc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793332853-ge7c6c6/amp-linux-arm64"
      sha256 "b257629a6c7b277c59589f5327409cde6ae6697bbb9a61374e68638da5eb966a"
    else
      url "https://static.ampcode.com/cli/0.0.1793332853-ge7c6c6/amp-linux-x64"
      sha256 "45220c1dbf89cee72e3a921a9755a9e55635ff0d55405c75412c3c0b2c976f5f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
