class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770580907-gdfd594"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770580907-gdfd594/amp-darwin-arm64"
      sha256 "a7e17d841ced7da7fb52b90d9387bdeff74e2df544e8d85394082c8a3549d5be"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770580907-gdfd594/amp-darwin-x64"
      sha256 "3191a17eddc7a08794c42d1832a3260382e42d83555cc7e22db760106be91b13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770580907-gdfd594/amp-linux-arm64"
      sha256 "023e72da588a2062e68321980dd26987701bec4e6840ede923e2bd89d1002ac7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770580907-gdfd594/amp-linux-x64"
      sha256 "61fc85f389a04acdd51198e07dc3eb215b993ec52d8a21027f8fe5261e5dabb3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
