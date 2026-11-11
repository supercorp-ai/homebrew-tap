# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.20.4.tgz"
      sha256 "564ee5883e72b9b6b80f9e11b2c98e82b443eb4c7a7dcf620d84aa52ad957cce"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.20.4.tgz"
      sha256 "b15a7daacaaa8b44b05bd5f29a2e3bc72dfb5b66264c02e260426c0663ea7175"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.20.4.tgz"
      sha256 "01a6b42fa4bad2f609eeb0bdd99334d37c3d8df8e9dbc98c1b5249397546285c"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.20.4.tgz"
      sha256 "0d2f77a703e19fc0da47a3e8a8d1e52c3da7155718a50a86b8c39c69fe15e442"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
