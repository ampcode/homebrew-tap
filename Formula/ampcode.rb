class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773228291-g491bb3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228291-g491bb3/amp-darwin-arm64"
      sha256 "d5e122d72e47aa8208cca8dd0ceddc580d453f9320238696dd5385442a048518"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228291-g491bb3/amp-darwin-x64"
      sha256 "ac337291e18986bbab2004c2c54acb04823769ea91b5f4be3231e80e89c0545b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228291-g491bb3/amp-linux-arm64"
      sha256 "dc813bbc97477fdb3964aa7d37a928cf1561c6809b4c92288bb2124f55310815"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228291-g491bb3/amp-linux-x64"
      sha256 "e2162063bbb151fc2d22dea2b145123eb8d4432fc4e89530c3f7ba29f00566f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
