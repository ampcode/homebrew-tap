class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784996198-gd115de"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784996198-gd115de/amp-darwin-arm64"
      sha256 "e61d2520f8411230f9d3cbb6be7c929cf6fdf5d9bce9166907048c8e856b9300"
    else
      url "https://static.ampcode.com/cli/0.0.1784996198-gd115de/amp-darwin-x64"
      sha256 "71d04335874639a27e6aca79b0660268bc94a3b6933421237f6b4b027da8bf0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784996198-gd115de/amp-linux-arm64"
      sha256 "b3e73a997926b1aede9e474d5e3d5b92ffc67b0136d828a90887710fae40a000"
    else
      url "https://static.ampcode.com/cli/0.0.1784996198-gd115de/amp-linux-x64"
      sha256 "556fa6261c6616b869cc0635f9c7b8094e6d513c6a7b5e51b713db39306644c2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
