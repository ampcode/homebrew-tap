class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778155165-g65cdae"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778155165-g65cdae/amp-darwin-arm64"
      sha256 "c4430ceb903dfa5029c441da6a5d35adde7e3c187bbdf7b9edbb889912e3c09a"
    else
      url "https://static.ampcode.com/cli/0.0.1778155165-g65cdae/amp-darwin-x64"
      sha256 "42143062ce9e37130fc6cb2c3e57fb6a8fe8f20f29e9d51128d7ce9c11846cbf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778155165-g65cdae/amp-linux-arm64"
      sha256 "a99300236768a302527bcf75033ae29179882f667eca650fd7eaf7351d3ddfaf"
    else
      url "https://static.ampcode.com/cli/0.0.1778155165-g65cdae/amp-linux-x64"
      sha256 "d5f63f72e4248daed0626a68e0a290babbdce5d941e14da83b66d333ab656c70"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
