class GitManifest < Formula
  gm_version = "1.3.1"
             
  desc "Manage multiple Git repositories with a manifest git repo"
  homepage "https://hojerst.gitlab.io/git-manifest/"
  url "https://gitlab.com/hojerst/git-manifest/-/releases/v#{gm_version}/downloads/git-manifest"
  version gm_version
  sha256 "5c23f8de99193925b869608e837267d8a27cfb747e9d608abcb0b50f89a7de1f"
  license "MIT"

  depends_on "bash"
  depends_on "git"

  def install
    bin.install "git-manifest"
  end

  test do
    v = `#{bin}/git-manifest version`
    assert_equal gm_version, v.chomp, "git-manifest version not correct expected: #{gmversion}, got: #{v}"
  end
end
